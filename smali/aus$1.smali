.class Laus$1;
.super Ljava/lang/Object;
.source "CommonMediaHandler.java"

# interfaces
.implements Lava$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laus;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laus;


# direct methods
.method constructor <init>(Laus;)V
    .locals 0
    .param p1, "this$0"    # Laus;

    .prologue
    .line 86
    iput-object p1, p0, Laus$1;->a:Laus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Laus$1;->a:Laus;

    invoke-static {v0}, Laus;->a(Laus;)V

    .line 91
    return-void
.end method
