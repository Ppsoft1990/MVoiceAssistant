.class final Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;
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
.field final synthetic a:Larn;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field final synthetic e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;


# direct methods
.method constructor <init>(Larn;ILandroid/content/Context;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->a:Larn;

    iput p2, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->b:I

    iput-object p3, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    iput-object p5, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "SpecificVoiceUtil"

    iget-object v2, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->a:Larn;

    invoke-virtual {v0, v1, v2}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 269
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->b:I

    iget-object v2, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->c:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->d:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$4;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 272
    return-void
.end method
