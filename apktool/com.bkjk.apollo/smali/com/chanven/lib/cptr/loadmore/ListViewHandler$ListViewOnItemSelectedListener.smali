.class Lcom/chanven/lib/cptr/loadmore/ListViewHandler$ListViewOnItemSelectedListener;
.super Ljava/lang/Object;
.source "ListViewHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/loadmore/ListViewHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewOnItemSelectedListener"
.end annotation


# instance fields
.field private onScrollBottomListener:Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;

.field final synthetic this$0:Lcom/chanven/lib/cptr/loadmore/ListViewHandler;


# direct methods
.method public constructor <init>(Lcom/chanven/lib/cptr/loadmore/ListViewHandler;Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;)V
    .locals 0
    .param p2, "onScrollBottomListener"    # Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/ListViewHandler$ListViewOnItemSelectedListener;->this$0:Lcom/chanven/lib/cptr/loadmore/ListViewHandler;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/chanven/lib/cptr/loadmore/ListViewHandler$ListViewOnItemSelectedListener;->onScrollBottomListener:Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;

    .line 78
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/ListViewHandler$ListViewOnItemSelectedListener;->onScrollBottomListener:Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/ListViewHandler$ListViewOnItemSelectedListener;->onScrollBottomListener:Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/OnScrollBottomListener;->onScorllBootom()V

    .line 87
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method