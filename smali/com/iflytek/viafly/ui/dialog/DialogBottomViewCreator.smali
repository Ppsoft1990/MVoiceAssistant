.class public Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;
.super Ljava/lang/Object;
.source "DialogBottomViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogBottomViewCreator"

.field private static mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    .line 30
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;
    .locals 4
    .param p1, "type"    # Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    .prologue
    .line 34
    const-string/jumbo v1, "DialogBottomViewCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create(), type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "bottomView":Landroid/view/View;
    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$DialogBottomViewCreator$BottomViewType:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    .end local v0    # "bottomView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;-><init>(Landroid/content/Context;Z)V

    .line 39
    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 41
    :pswitch_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    .end local v0    # "bottomView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;-><init>(Landroid/content/Context;Z)V

    .line 42
    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;

    .end local v0    # "bottomView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;-><init>(Landroid/content/Context;)V

    .line 45
    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
