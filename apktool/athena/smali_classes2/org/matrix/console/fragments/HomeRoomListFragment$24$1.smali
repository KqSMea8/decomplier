.class public Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;
.super Ljava/lang/Object;
.source "HomeRoomListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/matrix/console/fragments/HomeRoomListFragment$24;->onSelected(Lorg/matrix/androidsdk/MXSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$1:Lorg/matrix/console/fragments/HomeRoomListFragment$24;

.field final synthetic val$session:Lorg/matrix/androidsdk/MXSession;


# direct methods
.method constructor <init>(Lorg/matrix/console/fragments/HomeRoomListFragment$24;Lorg/matrix/androidsdk/MXSession;)V
    .locals 0

    .prologue
    .line 1533
    iput-object p1, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->this$1:Lorg/matrix/console/fragments/HomeRoomListFragment$24;

    iput-object p2, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->val$session:Lorg/matrix/androidsdk/MXSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0x755

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1553
    :goto_0
    return-void

    .line 1536
    :cond_0
    iget-object v0, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->this$1:Lorg/matrix/console/fragments/HomeRoomListFragment$24;

    iget-object v0, v0, Lorg/matrix/console/fragments/HomeRoomListFragment$24;->val$sessions:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->val$session:Lorg/matrix/androidsdk/MXSession;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1538
    iget-object v1, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->this$1:Lorg/matrix/console/fragments/HomeRoomListFragment$24;

    iget-object v1, v1, Lorg/matrix/console/fragments/HomeRoomListFragment$24;->this$0:Lorg/matrix/console/fragments/HomeRoomListFragment;

    invoke-virtual {v1}, Lorg/matrix/console/fragments/HomeRoomListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->val$session:Lorg/matrix/androidsdk/MXSession;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/matrix/console/activity/CommonActivityUtils;->logout(Landroid/app/Activity;Lorg/matrix/androidsdk/MXSession;Ljava/lang/Boolean;)V

    .line 1540
    iget-object v1, p0, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;->this$1:Lorg/matrix/console/fragments/HomeRoomListFragment$24;

    iget-object v1, v1, Lorg/matrix/console/fragments/HomeRoomListFragment$24;->this$0:Lorg/matrix/console/fragments/HomeRoomListFragment;

    invoke-virtual {v1}, Lorg/matrix/console/fragments/HomeRoomListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1$1;

    invoke-direct {v2, p0, v0}, Lorg/matrix/console/fragments/HomeRoomListFragment$24$1$1;-><init>(Lorg/matrix/console/fragments/HomeRoomListFragment$24$1;I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method