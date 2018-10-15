.class final Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$3;
.super Ljava/lang/Object;
.source "SpecificVoiceUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;ILjava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Larn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$3;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$3;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 261
    return-void
.end method
