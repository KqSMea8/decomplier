.class public abstract L0o0/ahy$O00000Oo;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L0o0/ahy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "O00000Oo"
.end annotation


# instance fields
.field final O000000o:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, L0o0/ahy$O00000Oo;->O000000o:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private varargs O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 523
    invoke-virtual {p0}, L0o0/ahy$O00000Oo;->O000000o()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {p0, v1, p1}, L0o0/ahy$O00000Oo;->O000000o(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 529
    const/4 p3, 0x0

    move-object v0, p3

    .line 531
    :goto_1
    if-nez v0, :cond_3

    .line 532
    if-eqz p2, :cond_0

    .line 535
    invoke-direct {p0, p2}, L0o0/ahy$O00000Oo;->O00000Oo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v1, v0, p2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 537
    :cond_3
    array-length v2, p4

    if-lez v2, :cond_4

    .line 538
    invoke-virtual {p0, v0, p4}, L0o0/ahy$O00000Oo;->O00000oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_4
    if-eqz p2, :cond_2

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, L0o0/ahy$O00000Oo;->O00000Oo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p3

    goto :goto_1
.end method

.method private O00000Oo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 558
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 559
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 560
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 561
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 562
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method O000000o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, L0o0/ahy$O00000Oo;->O000000o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, L0o0/ahy$O00000Oo;->O000000o:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 399
    :cond_0
    return-object v0
.end method

.method protected abstract O000000o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs O000000o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public O000000o(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 474
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method public varargs O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method protected O000000o(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method protected O000000o(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p2}, L0o0/ahy$O00000Oo;->O000000o(I)Z

    move-result v0

    return v0
.end method

.method public varargs O00000Oo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 419
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public varargs O00000Oo(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public varargs O00000o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method public varargs O00000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public varargs O00000o0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 434
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public varargs O00000o0(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    return-void
.end method

.method public varargs O00000oO(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public varargs O00000oO(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, L0o0/ahy$O00000Oo;->O000000o(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method protected O00000oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
