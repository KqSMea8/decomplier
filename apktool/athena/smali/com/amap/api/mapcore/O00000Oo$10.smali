.class public Lcom/amap/api/mapcore/O00000Oo$10;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/O00000Oo;->O0000OoO(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Z

.field final synthetic O00000Oo:Lcom/amap/api/mapcore/O00000Oo;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/O00000Oo;Z)V
    .locals 0

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/amap/api/mapcore/O00000Oo$10;->O00000Oo:Lcom/amap/api/mapcore/O00000Oo;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/O00000Oo$10;->O000000o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1633
    iget-object v0, p0, Lcom/amap/api/mapcore/O00000Oo$10;->O00000Oo:Lcom/amap/api/mapcore/O00000Oo;

    invoke-static {v0}, Lcom/amap/api/mapcore/O00000Oo;->O00000o(Lcom/amap/api/mapcore/O00000Oo;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/amap/api/mapcore/O00000Oo$10;->O00000Oo:Lcom/amap/api/mapcore/O00000Oo;

    invoke-static {v0}, Lcom/amap/api/mapcore/O00000Oo;->O00000o(Lcom/amap/api/mapcore/O00000Oo;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    const/16 v1, 0x3fd

    iget-boolean v2, p0, Lcom/amap/api/mapcore/O00000Oo$10;->O000000o:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->O000000o(IIIII)V

    .line 1635
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 1634
    goto :goto_0
.end method