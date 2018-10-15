.class public Lawo;
.super Lavi;
.source "NewsScheduleTriggerHandler.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lawo;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lawo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawo;->b:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lawo;->c:Lawo;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lawo;->d:Z

    return v0
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 48
    return-void
.end method
