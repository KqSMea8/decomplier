.class Lcom/koushikdutta/async/http/AsyncHttpClient$9;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeFile(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownloaded:J

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fout:Ljava/io/OutputStream;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$fout:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->mDownloaded:J

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 6
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 586
    if-eqz p1, :cond_0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$fout:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 593
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 626
    :goto_1
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    invoke-static {v0, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1000(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 598
    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->contentLength(Lcom/koushikdutta/async/http/Headers;)I

    move-result v0

    int-to-long v4, v0

    .line 600
    .local v4, "contentLength":J
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$fout:Ljava/io/OutputStream;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$9;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/AsyncHttpResponse;J)V

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 608
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$9;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_1

    .line 590
    .end local v4    # "contentLength":J
    :catch_0
    move-exception v0

    goto :goto_0
.end method
