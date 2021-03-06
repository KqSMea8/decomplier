.class final Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;
.super Lrx/internal/operators/DeferredScalarSubscriberSafe;
.source "OnSubscribeToMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeToMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToMapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/DeferredScalarSubscriberSafe",
        "<TT;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Ljava/util/Map;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/Map",
            "<TK;TV;>;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;, "Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber<TT;TK;TV;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/Map<TK;TV;>;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p4, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/DeferredScalarSubscriberSafe;-><init>(Lrx/Subscriber;)V

    .line 106
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->value:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->hasValue:Z

    .line 108
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->keySelector:Lrx/functions/Func1;

    .line 109
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->valueSelector:Lrx/functions/Func1;

    .line 110
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;, "Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->done:Z

    if-eqz v3, :cond_0

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, "val":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 128
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->unsubscribe()V

    .line 129
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;, "Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber<TT;TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeToMap$ToMapSubscriber;->request(J)V

    .line 115
    return-void
.end method
