.class public final L0o0/afs$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements L0o0/afz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L0o0/afs;->O000000o(Ljava/io/OutputStream;L0o0/agb;)L0o0/afz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:L0o0/agb;

.field final synthetic O00000Oo:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(L0o0/agb;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, L0o0/afs$1;->O000000o:L0o0/agb;

    iput-object p2, p0, L0o0/afs$1;->O00000Oo:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(L0o0/afi;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    iget-wide v0, p1, L0o0/afi;->O00000Oo:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, L0o0/agc;->O000000o(JJJ)V

    .line 74
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, L0o0/afs$1;->O000000o:L0o0/agb;

    invoke-virtual {v0}, L0o0/agb;->O0000O0o()V

    .line 76
    iget-object v0, p1, L0o0/afi;->O000000o:L0o0/afw;

    .line 77
    iget v1, v0, L0o0/afw;->O00000o0:I

    iget v4, v0, L0o0/afw;->O00000Oo:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 78
    iget-object v4, p0, L0o0/afs$1;->O00000Oo:Ljava/io/OutputStream;

    iget-object v5, v0, L0o0/afw;->O000000o:[B

    iget v6, v0, L0o0/afw;->O00000Oo:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v4, v0, L0o0/afw;->O00000Oo:I

    add-int/2addr v4, v1

    iput v4, v0, L0o0/afw;->O00000Oo:I

    .line 81
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 82
    iget-wide v4, p1, L0o0/afi;->O00000Oo:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, L0o0/afi;->O00000Oo:J

    .line 84
    iget v1, v0, L0o0/afw;->O00000Oo:I

    iget v4, v0, L0o0/afw;->O00000o0:I

    if-ne v1, v4, :cond_0

    .line 85
    invoke-virtual {v0}, L0o0/afw;->O000000o()L0o0/afw;

    move-result-object v1

    iput-object v1, p1, L0o0/afi;->O000000o:L0o0/afw;

    .line 86
    invoke-static {v0}, L0o0/afx;->O000000o(L0o0/afw;)V

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, L0o0/afs$1;->O00000Oo:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 97
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, L0o0/afs$1;->O00000Oo:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    return-void
.end method

.method public timeout()L0o0/agb;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, L0o0/afs$1;->O000000o:L0o0/agb;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, L0o0/afs$1;->O00000Oo:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method