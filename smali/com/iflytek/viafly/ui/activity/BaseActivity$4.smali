.class Lcom/iflytek/viafly/ui/activity/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/BaseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/BaseActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity$4;->this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseActivity$4;->this$0:Lcom/iflytek/viafly/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onClickTitleRightButton()V

    .line 174
    return-void
.end method
