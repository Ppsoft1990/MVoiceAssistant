.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;->a:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->performClick()Z

    .line 265
    return-void
.end method
