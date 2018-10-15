.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
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
    .line 272
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 275
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
