from setuptools import setup, find_packages

setup(
    name='apiverve_colorconverter',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Color Converter translates color values across hex, RGB, CMYK, and named inputs into standard RGB formats and channel breakdowns. Paid plans expand output to include CMYK, HSL, ANSI 16-color codes, and recognized English color names.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/colorconverter?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
