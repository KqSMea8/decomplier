.class public final L0o0/afs$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements L0o0/aga;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L0o0/afs;->O000000o(Ljava/io/InputStream;L0o0/agb;)L0o0/aga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:L0o0/agb;

.field final synthetic O00000Oo:Ljava/io/InputStream;


# direct methods
.method constructor <init>(L0o0/agb;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, L0o0/afs$2;->O000000o:L0o0/agb;

    iput-object p2, p0, L0o0/afs$2;->O00000Oo:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, L0o0/afs$2;->O00000Oo:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 151
    return-void
.end method

.method public read(L0o0/afi;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 132
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 142
    :goto_0
    return-wide v0

    .line 135
    :cond_1
    :try_start_0
    iget-object v0, p0, L0o0/afs$2;->O000000o:L0o0/agb;

    invoke-virtual {v0}, L0o0/agb;->O0000O0o()V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L0o0/afi;->O00000oO(I)L0o0/afw;

    move-result-object v0

    .line 137
    iget v1, v0, L0o0/afw;->O00000o0:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 138
    iget-object v2, p0, L0o0/afs$2;->O00000Oo:Ljava/io/InputStream;

    iget-object v3, v0, L0o0/afw;->O000000o:[B

    iget v4, v0, L0o0/afw;->O00000o0:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 139
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 140
    :cond_2
    iget v2, v0, L0o0/afw;->O00000o0:I

    add-int/2addr v2, v1

    iput v2, v0, L0o0/afw;->O00000o0:I

    .line 141
    iget-wide v2, p1, L0o0/afi;->O00000Oo:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, L0o0/afi;->O00000Oo:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    int-to-long v0, v1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, L0o0/afs;->O000000o(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :cond_3
    throw v0
.end method

.method public timeout()L0o0/agb;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, L0o0/afs$2;->O000000o:L0o0/agb;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, L0o0/afs$2;->O00000Oo:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method