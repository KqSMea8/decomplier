.class public Lcom/amap/api/col/o0O00000;
.super Ljava/lang/Object;
.source "OfflineLocEntity.java"


# instance fields
.field private O000000o:Landroid/content/Context;

.field private O00000Oo:Lcom/amap/api/col/OO0O0OO;

.field private O00000o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/OO0O0OO;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/o0O00000;->O000000o:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/amap/api/col/o0O00000;->O00000Oo:Lcom/amap/api/col/OO0O0OO;

    .line 36
    iput-object p3, p0, Lcom/amap/api/col/o0O00000;->O00000o0:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private static O000000o(Landroid/content/Context;Lcom/amap/api/col/OO0O0OO;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/amap/api/col/o0O00000;->O00000Oo(Landroid/content/Context;Lcom/amap/api/col/OO0O0OO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/amap/api/col/OO0O0o0;->O000000o(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/col/OO00O;->O00000Oo(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static O00000Oo(Landroid/content/Context;Lcom/amap/api/col/OO0O0OO;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    :try_start_0
    const-string v0, "\"sdkversion\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/col/OO0O0OO;->O00000Oo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"product\":\""

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/col/OO0O0OO;->O000000o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-static {p0}, Lcom/amap/api/col/OO00OOO;->O00000o0(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"details\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method O000000o()[B
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amap/api/col/o0O00000;->O000000o:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/o0O00000;->O00000Oo:Lcom/amap/api/col/OO0O0OO;

    iget-object v2, p0, Lcom/amap/api/col/o0O00000;->O00000o0:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/o0O00000;->O000000o(Landroid/content/Context;Lcom/amap/api/col/OO0O0OO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/amap/api/col/OO0O0o0;->O000000o(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method