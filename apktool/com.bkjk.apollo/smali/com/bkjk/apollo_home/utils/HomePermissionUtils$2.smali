.class Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;
.super Ljava/lang/Object;
.source "HomePermissionUtils.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bkjk/apollo_home/utils/HomePermissionUtils;->preVideo(Landroid/app/Activity;Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bkjk/apollo_home/utils/HomePermissionUtils;

.field final synthetic val$callback:Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;


# direct methods
.method constructor <init>(Lcom/bkjk/apollo_home/utils/HomePermissionUtils;Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bkjk/apollo_home/utils/HomePermissionUtils;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->this$0:Lcom/bkjk/apollo_home/utils/HomePermissionUtils;

    iput-object p2, p0, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->val$callback:Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->val$callback:Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->val$callback:Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;

    invoke-interface {v0}, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;->onGranted()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->val$callback:Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->val$callback:Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;

    invoke-interface {v0}, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$Callback;->onFailed()V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bkjk/apollo_home/utils/HomePermissionUtils$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method