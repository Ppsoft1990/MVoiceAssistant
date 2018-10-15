.class Lcom/iflytek/framework/business/components/UIComponents$ToastObj;
.super Ljava/lang/Object;
.source "UIComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/UIComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastObj"
.end annotation


# instance fields
.field public mContent:Ljava/lang/String;

.field public mShowType:I

.field final synthetic this$0:Lcom/iflytek/framework/business/components/UIComponents;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/components/UIComponents;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;->this$0:Lcom/iflytek/framework/business/components/UIComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/components/UIComponents;Lcom/iflytek/framework/business/components/UIComponents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/components/UIComponents;
    .param p2, "x1"    # Lcom/iflytek/framework/business/components/UIComponents$1;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/UIComponents$ToastObj;-><init>(Lcom/iflytek/framework/business/components/UIComponents;)V

    return-void
.end method
