.class Lcom/rnx/react/views/hywebview/a$b$2;
.super Ljava/lang/Object;
.source "HyWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnx/react/views/hywebview/a$b;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/rnx/react/views/hywebview/a$b;


# direct methods
.method constructor <init>(Lcom/rnx/react/views/hywebview/a$b;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/rnx/react/views/hywebview/a$b$2;->b:Lcom/rnx/react/views/hywebview/a$b;

    iput-object p2, p0, Lcom/rnx/react/views/hywebview/a$b$2;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 403
    iget-object v0, p0, Lcom/rnx/react/views/hywebview/a$b$2;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 404
    return-void
.end method