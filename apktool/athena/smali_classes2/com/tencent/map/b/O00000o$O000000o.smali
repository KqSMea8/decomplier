.class public final Lcom/tencent/map/b/O00000o$O000000o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/O00000o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "O000000o"
.end annotation


# instance fields
.field private O000000o:Landroid/location/Location;

.field private O00000Oo:J

.field private O00000o0:I


# virtual methods
.method public final O000000o()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/map/b/O00000o$O000000o;->O000000o:Landroid/location/Location;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/tencent/map/b/O00000o$O000000o;->O00000o0:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/tencent/map/b/O00000o$O000000o;->O00000o0:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/map/b/O00000o$O000000o;->O00000Oo:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final O00000Oo()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/b/O00000o$O000000o;->O000000o:Landroid/location/Location;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/b/O00000o$O000000o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/map/b/O00000o$O000000o;->O000000o:Landroid/location/Location;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/tencent/map/b/O00000o$O000000o;->O000000o:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, v0, Lcom/tencent/map/b/O00000o$O000000o;->O000000o:Landroid/location/Location;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method