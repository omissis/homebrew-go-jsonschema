# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoJsonschema < Formula
  desc "go-jsonschema binary"
  homepage "https://gihub.com/omissis/go-jsonschema"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.0/go-jsonschema_0.12.0_Darwin_x86_64.tar.gz"
      sha256 "0871a1e10429ed14f92f30a5fbfa74cd5c3a5a4c1aa23d3a92de16daee9848f7"

      def install
        bin.install 'go-jsonschema'
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.0/go-jsonschema_0.12.0_Darwin_arm64.tar.gz"
      sha256 "63c06b5c319de4efc56739bbc67603c230fedba0d5b1521d3eee884c058445c8"

      def install
        bin.install 'go-jsonschema'
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.0/go-jsonschema_0.12.0_Linux_arm64.tar.gz"
      sha256 "a6fb0673ecf6a4670949a233270a3f3a3bd6397024799e8a850419d1f274c326"

      def install
        bin.install 'go-jsonschema'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.0/go-jsonschema_0.12.0_Linux_x86_64.tar.gz"
      sha256 "d3bed45a83698d084666550c20cf121f0796ecfec56337bf51db27fc49b785b4"

      def install
        bin.install 'go-jsonschema'
      end
    end
  end

  test do
    system "#{bin}/go-jsonschema"
  end
end
