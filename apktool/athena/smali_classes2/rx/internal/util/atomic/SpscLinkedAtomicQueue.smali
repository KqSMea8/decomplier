.class public final Lrx/internal/util/atomic/SpscLinkedAtomicQueue;
.super Lrx/internal/util/atomic/BaseLinkedAtomicQueue;
.source "SpscLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/atomic/BaseLinkedAtomicQueue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lrx/internal/util/atomic/BaseLinkedAtomicQueue;-><init>()V

    .line 38
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 40
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 42
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->lpProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 65
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v1}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;->spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method