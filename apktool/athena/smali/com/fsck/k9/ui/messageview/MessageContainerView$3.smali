.class public Lcom/fsck/k9/ui/messageview/MessageContainerView$3;
.super Ljava/lang/Object;
.source "MessageContainerView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Ljava/lang/String;

.field final synthetic O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O000000o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 237
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->O000000o(Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, L0o0/az;->O000000o(Landroid/content/Context;)L0o0/az;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O000000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, L0o0/az;->O000000o(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fsck/k9/R$string;->webview_contextmenu_phone_clipboard_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O00000Oo:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->O000000o(Lcom/fsck/k9/ui/messageview/MessageContainerView;)L0o0/aw;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$3;->O000000o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, L0o0/aw;->O000000o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method