.class Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$2;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->access$400(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method
