.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$3;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$3;->b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1796
    return-void
.end method
