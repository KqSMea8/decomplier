.class public final Lcom/squareup/moshi/O00oOooO;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/O00oOooO$O00000o;,
        Lcom/squareup/moshi/O00oOooO$O00000o0;,
        Lcom/squareup/moshi/O00oOooO$O0000O0o;,
        Lcom/squareup/moshi/O00oOooO$O000000o;,
        Lcom/squareup/moshi/O00oOooO$O00000Oo;,
        Lcom/squareup/moshi/O00oOooO$O0000OOo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic O0000O0o:Z

.field private static final O0000OOo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field O000000o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field O00000o:I

.field final O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field O00000oO:I

.field O00000oo:I

.field private O0000Oo:Lcom/squareup/moshi/O00oOooO$O00000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/O00oOooO",
            "<TK;TV;>.O00000o;"
        }
    .end annotation
.end field

.field private O0000Oo0:Lcom/squareup/moshi/O00oOooO$O00000o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/O00oOooO",
            "<TK;TV;>.O00000o0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/squareup/moshi/O00oOooO;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/moshi/O00oOooO;->O0000O0o:Z

    .line 41
    new-instance v0, Lcom/squareup/moshi/O00oOooO$1;

    invoke-direct {v0}, Lcom/squareup/moshi/O00oOooO$1;-><init>()V

    sput-object v0, Lcom/squareup/moshi/O00oOooO;->O0000OOo:Ljava/util/Comparator;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/moshi/O00oOooO;-><init>(Ljava/util/Comparator;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 50
    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    .line 51
    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    .line 71
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/squareup/moshi/O00oOooO;->O000000o:Ljava/util/Comparator;

    .line 74
    new-instance v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;

    invoke-direct {v0}, Lcom/squareup/moshi/O00oOooO$O0000OOo;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iput-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 76
    iget-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oo:I

    .line 77
    return-void

    .line 71
    :cond_0
    sget-object p1, Lcom/squareup/moshi/O00oOooO;->O0000OOo:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private static O000000o(I)I
    .locals 2

    .prologue
    .line 233
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    .line 234
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private O000000o()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    invoke-static {v0}, Lcom/squareup/moshi/O00oOooO;->O000000o([Lcom/squareup/moshi/O00oOooO$O0000OOo;)[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 557
    iget-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oo:I

    .line 558
    return-void
.end method

.method private O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 401
    iget-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 402
    iget-object v4, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 403
    iget-object v5, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 406
    iput-object v4, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 407
    if-eqz v4, :cond_0

    .line 408
    iput-object p1, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 411
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 414
    iput-object p1, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 415
    iput-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 418
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 420
    iget v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 422
    return-void

    :cond_2
    move v2, v1

    .line 418
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 311
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 312
    if-eqz p2, :cond_0

    .line 313
    iput-object v0, p2, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 316
    :cond_0
    if-eqz v0, :cond_3

    .line 317
    iget-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    if-ne v1, p1, :cond_1

    .line 318
    iput-object p2, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_1
    sget-boolean v1, Lcom/squareup/moshi/O00oOooO;->O0000O0o:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 321
    :cond_2
    iput-object p2, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    goto :goto_0

    .line 324
    :cond_3
    iget v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000O0o:I

    iget-object v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 325
    iget-object v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    aput-object p2, v1, v0

    goto :goto_0
.end method

.method private O000000o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 222
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static O000000o([Lcom/squareup/moshi/O00oOooO$O0000OOo;)[Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;)[",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 566
    array-length v5, p0

    .line 568
    mul-int/lit8 v0, v5, 0x2

    new-array v6, v0, [Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 569
    new-instance v7, Lcom/squareup/moshi/O00oOooO$O00000Oo;

    invoke-direct {v7}, Lcom/squareup/moshi/O00oOooO$O00000Oo;-><init>()V

    .line 570
    new-instance v8, Lcom/squareup/moshi/O00oOooO$O000000o;

    invoke-direct {v8}, Lcom/squareup/moshi/O00oOooO$O000000o;-><init>()V

    .line 571
    new-instance v9, Lcom/squareup/moshi/O00oOooO$O000000o;

    invoke-direct {v9}, Lcom/squareup/moshi/O00oOooO$O000000o;-><init>()V

    move v4, v1

    .line 574
    :goto_0
    if-ge v4, v5, :cond_7

    .line 575
    aget-object v10, p0, v4

    .line 576
    if-nez v10, :cond_0

    .line 574
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {v7, v10}, Lcom/squareup/moshi/O00oOooO$O00000Oo;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    move v0, v1

    move v2, v1

    .line 584
    :goto_2
    invoke-virtual {v7}, Lcom/squareup/moshi/O00oOooO$O00000Oo;->O000000o()Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 585
    iget v11, v11, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000O0o:I

    and-int/2addr v11, v5

    if-nez v11, :cond_1

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 588
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 593
    :cond_2
    invoke-virtual {v8, v2}, Lcom/squareup/moshi/O00oOooO$O000000o;->O000000o(I)V

    .line 594
    invoke-virtual {v9, v0}, Lcom/squareup/moshi/O00oOooO$O000000o;->O000000o(I)V

    .line 595
    invoke-virtual {v7, v10}, Lcom/squareup/moshi/O00oOooO$O00000Oo;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 596
    :goto_3
    invoke-virtual {v7}, Lcom/squareup/moshi/O00oOooO$O00000Oo;->O000000o()Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 597
    iget v11, v10, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000O0o:I

    and-int/2addr v11, v5

    if-nez v11, :cond_3

    .line 598
    invoke-virtual {v8, v10}, Lcom/squareup/moshi/O00oOooO$O000000o;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    goto :goto_3

    .line 600
    :cond_3
    invoke-virtual {v9, v10}, Lcom/squareup/moshi/O00oOooO$O000000o;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    goto :goto_3

    .line 605
    :cond_4
    if-lez v2, :cond_5

    invoke-virtual {v8}, Lcom/squareup/moshi/O00oOooO$O000000o;->O000000o()Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v2

    :goto_4
    aput-object v2, v6, v4

    .line 606
    add-int v2, v4, v5

    if-lez v0, :cond_6

    invoke-virtual {v9}, Lcom/squareup/moshi/O00oOooO$O000000o;->O000000o()Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    :goto_5
    aput-object v0, v6, v2

    goto :goto_1

    :cond_5
    move-object v2, v3

    .line 605
    goto :goto_4

    :cond_6
    move-object v0, v3

    .line 606
    goto :goto_5

    .line 608
    :cond_7
    return-object v6
.end method

.method private O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 429
    iget-object v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 430
    iget-object v4, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 431
    iget-object v5, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 434
    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 435
    if-eqz v5, :cond_0

    .line 436
    iput-object p1, v5, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 439
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 442
    iput-object p1, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 443
    iput-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 446
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 448
    iget v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 450
    return-void

    :cond_2
    move v2, v1

    .line 446
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 337
    :goto_0
    if-eqz p1, :cond_1

    .line 338
    iget-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 339
    iget-object v4, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 340
    if-eqz v3, :cond_2

    iget v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    move v2, v0

    .line 341
    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 343
    :goto_2
    sub-int v5, v2, v0

    .line 344
    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    .line 345
    iget-object v3, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 346
    iget-object v0, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 347
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    move v2, v0

    .line 348
    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 350
    :goto_4
    sub-int/2addr v0, v2

    .line 351
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 358
    :goto_5
    if-eqz p2, :cond_a

    .line 394
    :cond_1
    :goto_6
    return-void

    :cond_2
    move v2, v1

    .line 340
    goto :goto_1

    :cond_3
    move v0, v1

    .line 341
    goto :goto_2

    :cond_4
    move v2, v1

    .line 347
    goto :goto_3

    :cond_5
    move v0, v1

    .line 348
    goto :goto_4

    .line 354
    :cond_6
    sget-boolean v2, Lcom/squareup/moshi/O00oOooO;->O0000O0o:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 355
    :cond_7
    invoke-direct {p0, v4}, Lcom/squareup/moshi/O00oOooO;->O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    goto :goto_5

    .line 362
    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    .line 363
    iget-object v4, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 364
    iget-object v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 365
    if-eqz v0, :cond_b

    iget v0, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    move v2, v0

    .line 366
    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 368
    :goto_8
    sub-int/2addr v0, v2

    .line 369
    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 370
    :cond_9
    invoke-direct {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 376
    :goto_9
    if-nez p2, :cond_1

    .line 337
    :cond_a
    iget-object p1, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    goto :goto_0

    :cond_b
    move v2, v1

    .line 365
    goto :goto_7

    :cond_c
    move v0, v1

    .line 366
    goto :goto_8

    .line 372
    :cond_d
    sget-boolean v2, Lcom/squareup/moshi/O00oOooO;->O0000O0o:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_e
    invoke-direct {p0, v3}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    goto :goto_9

    .line 380
    :cond_f
    if-nez v5, :cond_10

    .line 381
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 382
    if-eqz p2, :cond_a

    goto :goto_6

    .line 387
    :cond_10
    sget-boolean v3, Lcom/squareup/moshi/O00oOooO;->O0000O0o:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 388
    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 389
    if-nez p2, :cond_a

    goto :goto_6
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 857
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method O000000o(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 200
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;Z)Lcom/squareup/moshi/O00oOooO$O0000OOo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method O000000o(Ljava/lang/Object;Z)Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v7, p0, Lcom/squareup/moshi/O00oOooO;->O000000o:Ljava/util/Comparator;

    .line 131
    iget-object v8, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/moshi/O00oOooO;->O000000o(I)I

    move-result v3

    .line 133
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    and-int v9, v3, v0

    .line 134
    aget-object v1, v8, v9

    .line 135
    const/4 v0, 0x0

    .line 137
    if-eqz v1, :cond_a

    .line 140
    sget-object v0, Lcom/squareup/moshi/O00oOooO;->O0000OOo:Ljava/util/Comparator;

    if-ne v7, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 145
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oo:Ljava/lang/Object;

    .line 146
    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 150
    :goto_1
    if-nez v4, :cond_3

    move-object v2, v1

    .line 194
    :cond_0
    :goto_2
    return-object v2

    :cond_1
    move-object v0, v2

    .line 140
    goto :goto_0

    .line 146
    :cond_2
    iget-object v4, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oo:Ljava/lang/Object;

    .line 147
    invoke-interface {v7, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    .line 155
    :cond_3
    if-gez v4, :cond_4

    iget-object v5, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 156
    :goto_3
    if-nez v5, :cond_5

    move v6, v4

    .line 165
    :goto_4
    if-eqz p2, :cond_0

    .line 170
    iget-object v4, p0, Lcom/squareup/moshi/O00oOooO;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 172
    if-nez v1, :cond_8

    .line 174
    sget-object v0, Lcom/squareup/moshi/O00oOooO;->O0000OOo:Ljava/util/Comparator;

    if-ne v7, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    .line 175
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_4
    iget-object v5, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    goto :goto_3

    :cond_5
    move-object v1, v5

    .line 161
    goto :goto_0

    .line 177
    :cond_6
    new-instance v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iget-object v5, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/moshi/O00oOooO$O0000OOo;-><init>(Lcom/squareup/moshi/O00oOooO$O0000OOo;Ljava/lang/Object;ILcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 178
    aput-object v0, v8, v9

    .line 189
    :goto_5
    iget v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    iget v2, p0, Lcom/squareup/moshi/O00oOooO;->O00000oo:I

    if-le v1, v2, :cond_7

    .line 190
    invoke-direct {p0}, Lcom/squareup/moshi/O00oOooO;->O000000o()V

    .line 192
    :cond_7
    iget v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    move-object v2, v0

    .line 194
    goto :goto_2

    .line 180
    :cond_8
    new-instance v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iget-object v5, v4, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/moshi/O00oOooO$O0000OOo;-><init>(Lcom/squareup/moshi/O00oOooO$O0000OOo;Ljava/lang/Object;ILcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 181
    if-gez v6, :cond_9

    .line 182
    iput-object v0, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 186
    :goto_6
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/squareup/moshi/O00oOooO;->O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;Z)V

    goto :goto_5

    .line 184
    :cond_9
    iput-object v0, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    goto :goto_6

    :cond_a
    move v6, v0

    goto :goto_4
.end method

.method O000000o(Ljava/util/Map$Entry;)Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000OOo:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 218
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    .line 217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 244
    if-eqz p2, :cond_0

    .line 245
    iget-object v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iget-object v1, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iput-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 246
    iget-object v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iget-object v1, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iput-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 247
    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 250
    :cond_0
    iget-object v0, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 251
    iget-object v1, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 252
    iget-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 253
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 264
    iget v3, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    iget v4, v1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo()Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    .line 265
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Z)V

    .line 268
    iget-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 269
    if-eqz v3, :cond_6

    .line 270
    iget v1, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 271
    iput-object v3, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 272
    iput-object v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 273
    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 276
    :goto_1
    iget-object v3, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 277
    if-eqz v3, :cond_1

    .line 278
    iget v2, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 279
    iput-object v3, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 280
    iput-object v0, v3, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 281
    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 283
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000Oo0:I

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 299
    :goto_2
    return-void

    .line 264
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O000000o()Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_3
    if-eqz v0, :cond_4

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 288
    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000Oo:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 296
    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/squareup/moshi/O00oOooO;->O00000Oo(Lcom/squareup/moshi/O00oOooO$O0000OOo;Z)V

    .line 297
    iget v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    .line 298
    iget v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    goto :goto_2

    .line 289
    :cond_4
    if-eqz v1, :cond_5

    .line 290
    invoke-direct {p0, p1, v1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    .line 291
    iput-object v5, p1, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    goto :goto_3

    .line 293
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Lcom/squareup/moshi/O00oOooO$O0000OOo;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method O00000Oo(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/moshi/O00oOooO$O0000OOo",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Lcom/squareup/moshi/O00oOooO$O0000OOo;Z)V

    .line 306
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000Oo:[Lcom/squareup/moshi/O00oOooO$O0000OOo;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    .line 105
    iget v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000oO:I

    .line 108
    iget-object v2, p0, Lcom/squareup/moshi/O00oOooO;->O00000o0:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 109
    iget-object v0, v2, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    :goto_0
    if-eq v0, v2, :cond_0

    .line 110
    iget-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 111
    iput-object v3, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iput-object v3, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_0
    iput-object v2, v2, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000oO:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    iput-object v2, v2, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O00000o:Lcom/squareup/moshi/O00oOooO$O0000OOo;

    .line 116
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O0000Oo0:Lcom/squareup/moshi/O00oOooO$O00000o0;

    .line 457
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/moshi/O00oOooO$O00000o0;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/O00oOooO$O00000o0;-><init>(Lcom/squareup/moshi/O00oOooO;)V

    iput-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O0000Oo0:Lcom/squareup/moshi/O00oOooO$O00000o0;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000OOo:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O0000Oo:Lcom/squareup/moshi/O00oOooO$O00000o;

    .line 462
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/moshi/O00oOooO$O00000o;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/O00oOooO$O00000o;-><init>(Lcom/squareup/moshi/O00oOooO;)V

    iput-object v0, p0, Lcom/squareup/moshi/O00oOooO;->O0000Oo:Lcom/squareup/moshi/O00oOooO$O00000o;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/O00oOooO;->O000000o(Ljava/lang/Object;Z)Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    .line 97
    iget-object v1, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000OOo:Ljava/lang/Object;

    .line 98
    iput-object p2, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000OOo:Ljava/lang/Object;

    .line 99
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/O00oOooO;->O00000Oo(Ljava/lang/Object;)Lcom/squareup/moshi/O00oOooO$O0000OOo;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/squareup/moshi/O00oOooO$O0000OOo;->O0000OOo:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/squareup/moshi/O00oOooO;->O00000o:I

    return v0
.end method