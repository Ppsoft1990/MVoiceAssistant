.class Lavs$4;
.super Ljava/lang/Object;
.source "ScheduleDelayGuideManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavs;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

.field final synthetic c:Lavs;


# direct methods
.method constructor <init>(Lavs;ZLcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lavs;

    .prologue
    .line 137
    iput-object p1, p0, Lavs$4;->c:Lavs;

    iput-boolean p2, p0, Lavs$4;->a:Z

    iput-object p3, p0, Lavs$4;->b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    iget-object v0, p0, Lavs$4;->c:Lavs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavs;->a(Lavs;Z)Z

    .line 142
    iget-boolean v0, p0, Lavs$4;->a:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lavs$4;->c:Lavs;

    invoke-static {v0}, Lavs;->a(Lavs;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lavs$4;->b:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    .line 147
    return-void
.end method
