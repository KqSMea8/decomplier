.class Lcom/amap/api/col/iv$2;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/iv;->a(Lcom/amap/api/col/iv$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/iv;


# direct methods
.method constructor <init>(Lcom/amap/api/col/iv;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/col/iv$2;->a:Lcom/amap/api/col/iv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method