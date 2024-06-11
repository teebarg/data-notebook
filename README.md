# Data Science Notebook

## 🚨 Warning: in construction 😎 🏗️

A dockerized Jupyter Notebook environment for data science work.

### Description

This project provides a Docker container with a pre-configured Jupyter Notebook environment. It includes popular data science libraries and tools, making it easy to get started with data analysis, machine learning, and other data science tasks.

## Prerequisites

* Docker installed on your system

## Getting Started

1. Clone this repository:

```bash
git clone https://github.com/teebarg/data-notebook.git
cd data-notebook
```

2. Build the Docker image:

```bash
docker build -t data-notebook .
```

3. Run the Docker container:

```bash
docker run -p 8888:8888 -v $(pwd)/notebooks:/notebooks data-notebook
```

or

```bash
make start
```

This will start the Jupyter Notebook server and mount the `notebooks` directory from your local machine into the container's `/notebooks` directory.

4. Access the Jupyter Notebook by opening your web browser and navigating to `<http://localhost:8888>`.

### Usage

The Docker container includes the following pre-installed libraries and tools:

* Python 3.x
* Jupyter Notebook
* NumPy
* Pandas
* Matplotlib
* Scikit-learn
* TensorFlow
* Keras
And more...

You can create new notebooks or open existing ones in the Jupyter Notebook interface. The notebooks will be stored in the `notebooks` directory on your local machine, ensuring data persistence across container restarts.

### Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

### License

This project is licensed under the MIT License.

### Acknowledgments

This project was inspired by the need for a consistent and reproducible data science environment. Special thanks to the developers of Docker, Jupyter Notebook, and the various open-source libraries included in this project.
