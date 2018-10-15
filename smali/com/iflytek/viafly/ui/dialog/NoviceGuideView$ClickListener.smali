.class Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;
.super Ljava/lang/Object;
.source "NoviceGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 73
    invoke-static {}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$000()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOVICE_GUIDE_WINDOW"

    invoke-virtual {v0, v1, v4}, Lil;->a(Ljava/lang/String;Z)V

    .line 76
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$002(I)I

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$100(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$200(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 81
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$002(I)I

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$200(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$300(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$002(I)I

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$300(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->access$400(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;->this$0:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->setVisibility(I)V

    .line 93
    sput-boolean v4, Laoc;->a:Z

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
