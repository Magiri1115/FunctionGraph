# ベースイメージにJulia公式を使用
FROM julia:1.11.4

# 必要なLinuxパッケージをインストール
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        qtbase5-dev \
        qtchooser \
        qt5-qmake \
        qtbase5-dev-tools \
        cmake \
        g++ \
        git \
        pkg-config \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        libx11-dev \
        libxext-dev \
        libxfixes-dev \
        libxi-dev \
        libxrender-dev \
        libxrandr-dev \
        libxcursor-dev \
        libxinerama-dev \
        libxss-dev \
        libxcomposite-dev \
        libasound2-dev \
        libpulse-dev \
        libudev-dev \
        libssl-dev \
        libffi-dev \
        libdbus-1-dev \
        curl \
        unzip \
        wget && \
    apt-get clean

# Juliaパッケージを事前にインストール（速度向上）
COPY ./JuliaBackend/Project.toml ./JuliaBackend/Manifest.toml /tmp/
RUN julia -e 'using Pkg; Pkg.activate("/tmp"); Pkg.instantiate()'

# 作業ディレクトリ設定
WORKDIR /FunctionGraph

# プロジェクト全体をコピー
COPY . .

# コンパイル＆ビルドはCI側で対応予定（Dockerは開発環境基盤用）
CMD ["bash"]

