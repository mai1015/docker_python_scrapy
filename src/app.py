from scrapy.cmdline import execute

def main():
    # print(os.path.dirname(os.path.abspath(__file__)))
    execute(["scrapy", "crawl", "web"])
    pass

if __name__ == "__main__":
    main()