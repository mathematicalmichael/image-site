mkdir -p ../image-site-git/
mv ../image-site-src/.git ../image-site-git/
mv ../image-site-src/CNAME ../image-site-git/
rm -rf ../image-site-src/
hugo
mv public ../image-site-src/
mv ../image-site-git/.git ../image-site-src/
mv ../image-site-git/CNAME ../image-site-src/
rm -rf ../image-site-git/
cd ../image-site-src/ && git add * && git commit -am 'auto-update' \
    && git push \
    && cd ../image-site/
