.class final Laup$1;
.super Ljava/lang/Object;
.source "ScheduleUpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laup;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Laup$1;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Laup$1;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 89
    return-void
.end method
