from setuptools import setup

setup(
    name='cis-benchmark-generator',
    version='0.1.1',
    py_modules=['generate'],
    include_package_data=True,
    install_requires=[
        'json-with-comments',
        'pandas',
        'openpyxl',
    ],
    entry_points={
        'console_scripts': [
            'cis-benchmark-generator=generate:main',
        ],
    },
    author='Subhankar Pal',
    author_email='developer.subho57@gmail.com',
    description='CIS Benchmark Docs and Controls Generator for Steampipe',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/subho57/cis-benchmark-docs-and-controls-generator',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.9',
)
