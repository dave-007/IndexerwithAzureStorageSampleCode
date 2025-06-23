# Dave's notes

https://techcommunity.microsoft.com/blog/azurestorageblog/building-a-scalable-web-crawling-and-indexing-pipeline-with-azure-storage-and-ai/4295042

no ACR was deployed, but I have a privatelink for it
created ieaiscraper.azurecr.io manually and added references to it in the configs

created ieaiscraper /subscriptions/5a20ed48-1f23-4e2e-b9c5-02733c03a911/resourceGroups/ie-ai-index-scraper2-southcentral-rg/providers/Microsoft.ContainerRegistry/registries/ieaiscraper
named repo repo1 in pipelines/variables/app/dev.yaml


...

deployed azure functions from VS COde Codespace

manually integrating app insights to the azure function per https://learn.microsoft.com/en-us/azure/azure-functions/configure-monitoring?tabs=v2#enable-application-insights-integration


how do i determine the urls to crawl with scrapy?