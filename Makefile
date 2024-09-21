mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

lint-fix:
	python3 -m isort $(current_dir)
	python3 -m unimport --ignore-init $(current_dir)
	python3 -m autopep8 --in-place --aggressive --aggressive --recursive --max-line-length=170 $(current_dir)

install:
	python3 -m pip install --upgrade pip
	python3 -m pip install --upgrade -r requirements.txt

test:
	python3 -m pytest $(current_dir)

dry-run:
	rm -rf cis_v300
	make lint-fix
	@start_time=$$(date +%s); \
	python3 $(current_dir)generate.py --benchmark CIS_Microsoft_Azure_Foundations_Benchmark_v3.0.0.xlsx --docs --controls --output ./; \
	end_time=$$(date +%s); \
	elapsed_time=$$((end_time - start_time)); \
	echo "Time taken: $$elapsed_time seconds"
