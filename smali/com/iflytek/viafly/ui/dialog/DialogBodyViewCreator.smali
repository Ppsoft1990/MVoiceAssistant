.class public Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;
.super Ljava/lang/Object;
.source "DialogBodyViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogBodyViewCreator"

.field protected static mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    .line 36
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;
    .locals 4
    .param p1, "type"    # Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .prologue
    .line 40
    const-string/jumbo v1, "DialogBodyViewCreator"

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

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "bodyView":Landroid/view/View;
    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$DialogBodyViewCreator$BodyViewType:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 70
    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;-><init>(Landroid/content/Context;)V

    .line 45
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 47
    :pswitch_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;-><init>(Landroid/content/Context;)V

    .line 48
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 50
    :pswitch_2
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/PicAndMessageBodyView;-><init>(Landroid/content/Context;)V

    .line 51
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 53
    :pswitch_3
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;-><init>(Landroid/content/Context;)V

    .line 54
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 56
    :pswitch_4
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;-><init>(Landroid/content/Context;)V

    .line 57
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 59
    :pswitch_5
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;-><init>(Landroid/content/Context;)V

    .line 60
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 62
    :pswitch_6
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 65
    :pswitch_7
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;

    .end local v0    # "bodyView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;-><init>(Landroid/content/Context;)V

    .line 66
    .restart local v0    # "bodyView":Landroid/view/View;
    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
