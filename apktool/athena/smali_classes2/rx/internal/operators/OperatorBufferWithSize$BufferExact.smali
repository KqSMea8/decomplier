.class public final Lrx/internal/operators/OperatorBufferWithSize$BufferExact;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 97
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    .line 98
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->request(J)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;J)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferExact$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferExact;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 110
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->count:I

    if-ne v1, v2, :cond_1

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->buffer:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 116
    :cond_1
    return-void
.end method