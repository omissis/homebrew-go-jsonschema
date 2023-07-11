# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoJsonschema < Formula
  desc "go-jsonschema binary"
  homepage "https://gihub.com/omissis/go-jsonschema"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.1/go-jsonschema_Darwin_arm64.tar.gz"
      sha256 "034f12edb2061b0cc82cbb7ce472da127a5e6ad2a42c45e805f71c8d53de0795"

      def install
        bin.install 'go-jsonschema'
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.1/go-jsonschema_Darwin_x86_64.tar.gz"
      sha256 "cdf845388477609deabba52fa869dd241361047b6dcb62a833912240439225b0"

      def install
        bin.install 'go-jsonschema'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.1/go-jsonschema_Linux_x86_64.tar.gz"
      sha256 "4264d8aa325f4c0b9c8a930edfcc48e9e4ca81004ad5aa1f3771e0b9d1281c72"

      def install
        bin.install 'go-jsonschema'
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omissis/go-jsonschema/releases/download/v0.12.1/go-jsonschema_Linux_arm64.tar.gz"
      sha256 "6b670ab3c0465b238c446d47dc50f694b74f826fc396d6622e0511b9f572b208"

      def install
        bin.install 'go-jsonschema'
      end
    end
  end

  test do
    system "#{bin}/go-jsonschema"
  end
end
