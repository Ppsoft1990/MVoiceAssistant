.class final Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;
.super Ljava/lang/Object;
.source "SpecificVoiceUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->b(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$2;->b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    .line 138
    return-void
.end method
