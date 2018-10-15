.class Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$1;
.super Ljava/lang/Object;
.source "HeadSetFoundActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$1;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 98
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_HEADSET_AUTO_START_CHECK"

    invoke-virtual {v0, v1, p2}, Lil;->a(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method
