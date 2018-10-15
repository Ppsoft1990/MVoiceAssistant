.class public Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;
.super Ljava/lang/Object;
.source "DialogTitleViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogTitleViewCreator"

.field private static mInstance:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    .line 29
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->mInstance:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;
    .locals 4
    .param p1, "type"    # Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    .prologue
    .line 33
    const-string/jumbo v1, "DialogTitleViewCreator"

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

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "titleView":Landroid/view/View;
    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$DialogTitleViewCreator$TiteViewType:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 43
    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    .end local v0    # "titleView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 38
    .restart local v0    # "titleView":Landroid/view/View;
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
