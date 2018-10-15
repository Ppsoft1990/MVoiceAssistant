.class Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$2;
.super Ljava/lang/Object;
.source "BookCollectListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$2;->b:Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookCollectListActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 205
    return-void
.end method
