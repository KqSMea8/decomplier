.class public Lcom/fsck/k9/fragment/MessageListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/fragment/O0000O0o;->O000000o(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/fsck/k9/fragment/O0000O0o;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/O0000O0o;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment$1;->O000000o:Lcom/fsck/k9/fragment/O0000O0o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$1;->O000000o:Lcom/fsck/k9/fragment/O0000O0o;

    invoke-static {v0}, Lcom/fsck/k9/fragment/O0000O0o;->O000000o(Lcom/fsck/k9/fragment/O0000O0o;)Lcom/fsck/k9/fragment/O00000o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/fragment/O00000o;->notifyDataSetChanged()V

    .line 668
    return-void
.end method