using NUnit.Framework;
using Sequence.Config;

namespace Sequence.EmbeddedWallet.Tests
{
    public class HttpClientTests
    {
        [Test]
        public void TestHttpClientIncludesAPIKey()
        {
            HttpClient client = new HttpClient("https://randomurl.com");
            var request = client.BuildRequest<object>("", null);
            string header = request.Item1.GetRequestHeader("X-Access-Key");
            Assert.IsTrue(header.Length > 0);
            Assert.AreEqual(SequenceConfig.GetConfig(SequenceService.WaaS).BuilderAPIKey, header);
            Assert.IsTrue(request.Item2.Contains(header));
        }
    }
}