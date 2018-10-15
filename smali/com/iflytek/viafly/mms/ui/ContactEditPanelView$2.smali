.class Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;
.super Ljava/lang/Object;
.source "ContactEditPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsContactItemView;

.field final synthetic b:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;Lcom/iflytek/viafly/mms/ui/SmsContactItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;->b:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    iput-object p2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;->a:Lcom/iflytek/viafly/mms/ui/SmsContactItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;->b:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;->a:Lcom/iflytek/viafly/mms/ui/SmsContactItemView;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Landroid/view/View;)V

    .line 149
    return-void
.end method
