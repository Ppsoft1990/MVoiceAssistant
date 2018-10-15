.class Lcom/iflytek/viafly/settings/ui/SettingFragment$3;
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


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SettingFragment;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/SettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/SettingFragment;)V

    .line 708
    return-void
.end method
