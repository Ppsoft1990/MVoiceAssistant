.class Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;
.super Ljava/lang/Object;
.source "CallPatternSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->loadData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;->this$1:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    iput p2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;->this$1:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList$1;->val$index:I

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->access$800(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;I)V

    .line 430
    return-void
.end method
