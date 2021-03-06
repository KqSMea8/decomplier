.class public Lrx/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static final DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

.field private static final INSTANCE:Lrx/plugins/RxJavaPlugins;


# instance fields
.field private final completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaCompletableExecutionHook;",
            ">;"
        }
    .end annotation
.end field

.field private final errorHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaObservableExecutionHook;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaSchedulersHook;",
            ">;"
        }
    .end annotation
.end field

.field private final singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaSingleExecutionHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lrx/plugins/RxJavaPlugins;

    invoke-direct {v0}, Lrx/plugins/RxJavaPlugins;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    .line 61
    new-instance v0, Lrx/plugins/RxJavaPlugins$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaPlugins$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    return-void
.end method

.method public static getInstance()Lrx/plugins/RxJavaPlugins;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    return-object v0
.end method

.method static getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 273
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 281
    const-string v4, "rxjava.plugin."

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".implementation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    if-nez v2, :cond_3

    .line 287
    const-string v5, ".class"

    .line 288
    const-string v6, ".impl"

    .line 290
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Implementing class declaration for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    .line 312
    :goto_0
    if-eqz v1, :cond_2

    .line 314
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    invoke-virtual {v0, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 329
    :goto_1
    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation is not an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 320
    :catch_1
    move-exception v0

    .line 321
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " implementation class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 322
    :catch_2
    move-exception v0

    .line 323
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " implementation not able to be instantiated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 324
    :catch_3
    move-exception v0

    .line 325
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " implementation not able to be accessed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 329
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    move-object v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;
    .locals 3
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    const-class v0, Lrx/plugins/RxJavaCompletableExecutionHook;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lrx/plugins/RxJavaPlugins$2;

    invoke-direct {v1, p0}, Lrx/plugins/RxJavaPlugins$2;-><init>(Lrx/plugins/RxJavaPlugins;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaCompletableExecutionHook;

    return-object v0

    .line 244
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaCompletableExecutionHook;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getErrorHandler()Lrx/plugins/RxJavaErrorHandler;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    const-class v0, Lrx/plugins/RxJavaErrorHandler;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaErrorHandler;

    return-object v0

    .line 116
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    const-class v0, Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaObservableExecutionHookDefault;->getInstance()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaObservableExecutionHook;

    return-object v0

    .line 158
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    const-class v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 346
    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->getDefaultInstance()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaSchedulersHook;

    return-object v0

    .line 352
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSingleExecutionHook()Lrx/plugins/RxJavaSingleExecutionHook;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    const-class v0, Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaSingleExecutionHookDefault;->getInstance()Lrx/plugins/RxJavaSingleExecutionHook;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaSingleExecutionHook;

    return-object v0

    .line 200
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaSingleExecutionHook;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerCompletableExecutionHook(Lrx/plugins/RxJavaCompletableExecutionHook;)V
    .locals 3
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    return-void
.end method

.method public registerErrorHandler(Lrx/plugins/RxJavaErrorHandler;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method public registerObservableExecutionHook(Lrx/plugins/RxJavaObservableExecutionHook;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    return-void
.end method

.method public registerSchedulersHook(Lrx/plugins/RxJavaSchedulersHook;)V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    return-void
.end method

.method public registerSingleExecutionHook(Lrx/plugins/RxJavaSingleExecutionHook;)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->singleExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->completableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
