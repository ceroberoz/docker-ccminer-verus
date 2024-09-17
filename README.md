# Docker CCMiner Setup for Verus Coin

This repository contains a Dockerized setup for running ccminer to mine Verus Coin.

## Prerequisites

- Docker
- Docker Compose

## Setup Instructions

1. Clone this repository:
   ```
   git clone https://github.com/ceroberoz/docker-ccminer-verus.git
   cd docker-ccminer-verus
   ```

2. Create a `data` directory in the project folder:
   ```
   mkdir data
   ```

3. Create a `config.txt` file in the `data` directory with your mining configuration:
   ```
   echo "POOL_URL=\"stratum+tcp://pool.verus.io:9999\"
   WALLET_ADDRESS=\"YOUR_WALLET_ADDRESS.worker_name\"
   PASSWORD=\"x\"
   THREADS=\"8\"" > data/config.txt
   ```
   Replace `YOUR_WALLET_ADDRESS` with your actual Verus Coin wallet address and adjust other parameters as needed.

4. Build and start the Docker container:
   ```
   docker-compose up -d
   ```

5. Check the logs to ensure the miner is running correctly:
   ```
   docker-compose logs -f
   ```

## Usage

- To stop the miner:
  ```
  docker-compose down
  ```

- To restart the miner:
  ```
  docker-compose restart
  ```

- To update the mining configuration, edit the `data/config.txt` file and restart the container:
  ```
  docker-compose restart
  ```

## Customization

You can modify the following files to customize your setup:

- `data/config.txt`: Update mining parameters (pool, wallet, threads, etc.)
- `Dockerfile`: Modify the build process or base image
- `docker-compose.yml`: Adjust container settings
- `start.sh`: Modify the startup script

## Troubleshooting

- If you encounter issues, check the Docker logs:
  ```
  docker-compose logs -f
  ```

- Ensure your `config.txt` file is correctly formatted and contains valid information.

- If you modify the Dockerfile, rebuild the image:
  ```
  docker-compose up -d --build
  ```

## Security Notice

Mining cryptocurrencies can be resource-intensive and may attract unwanted attention. Ensure you have permission to mine on your network and system, and always follow best security practices.

## Disclaimer

This setup is provided as-is. Use at your own risk. Make sure you understand the implications of cryptocurrency mining before proceeding.
