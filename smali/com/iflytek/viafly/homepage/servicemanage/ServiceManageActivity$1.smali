.class Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;
.super Ljava/lang/Object;
.source "ServiceManageActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a(I)Laic;

    move-result-object v0

    .line 75
    .local v0, "item":Laic;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->remove(Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->insert(Ljava/lang/Object;I)V

    .line 78
    return-void
.end method
