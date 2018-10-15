.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a()V

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;->a()V

    .line 564
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$2;->a()V

    .line 569
    return-void
.end method
