.class Lcom/iflytek/viafly/settings/ui/SettingFragment$4;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/SettingFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$4;->val$builder:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$4;->val$builder:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 702
    return-void
.end method
