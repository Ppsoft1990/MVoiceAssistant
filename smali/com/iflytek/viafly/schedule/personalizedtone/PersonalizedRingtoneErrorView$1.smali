.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$1;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneErrorView$a;->a()V

    .line 64
    :cond_0
    return-void
.end method
