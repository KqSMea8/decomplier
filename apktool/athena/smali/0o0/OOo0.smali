.class public abstract L0o0/OOo0;
.super Ljava/lang/Object;
.source "BaseKeyPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "L0o0/o0000000;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final O000000o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x14

    invoke-static {v0}, L0o0/h;->O000000o(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, L0o0/OOo0;->O000000o:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public O000000o(L0o0/o0000000;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, L0o0/OOo0;->O000000o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v0, p0, L0o0/OOo0;->O000000o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method

.method protected abstract O00000Oo()L0o0/o0000000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected O00000o0()L0o0/o0000000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, L0o0/OOo0;->O000000o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L0o0/o0000000;

    .line 13
    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, L0o0/OOo0;->O00000Oo()L0o0/o0000000;

    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method