.class Lcom/amap/api/mapcore/offlinemap/a$b;
.super Landroid/os/Handler;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/offlinemap/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/offlinemap/a;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/offlinemap/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/amap/api/mapcore/offlinemap/a$b;->a:Lcom/amap/api/mapcore/offlinemap/a;

    .line 868
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 869
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 876
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 877
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 878
    instance-of v1, v0, Lcom/amap/api/mapcore/offlinemap/CityObject;

    if-eqz v1, :cond_1

    .line 879
    check-cast v0, Lcom/amap/api/mapcore/offlinemap/CityObject;

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OfflineMapHandler handleMessage CitObj  name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getcompleteCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/as;->a(Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a$b;->a:Lcom/amap/api/mapcore/offlinemap/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/offlinemap/a;->d(Lcom/amap/api/mapcore/offlinemap/a;)Lcom/amap/api/mapcore/offlinemap/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a$b;->a:Lcom/amap/api/mapcore/offlinemap/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/offlinemap/a;->d(Lcom/amap/api/mapcore/offlinemap/a;)Lcom/amap/api/mapcore/offlinemap/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/offlinemap/a$a;->a(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    const-string v0, "Do not callback by CityObject! "

    invoke-static {v0}, Lcom/amap/api/col/as;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
