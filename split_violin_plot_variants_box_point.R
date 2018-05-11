##split violin box plot##


data %>%
  ggplot(aes(sex, dv, fill = face_sex)) +
  geom_hline(yintercept=0, color=textcolor, size=1) +
  geom_split_violin(color=textcolor, trim=FALSE, alpha = 0.5) +
  geom_boxplot(color = textcolor, 
               width = 0.25, 
               position = position_dodge(width=0.25)) +
  ylab("DV") +
  xlab("Participant Sex") +
  ylim(-5, 5) + 
  scale_fill_manual(values = c("#3D66CC", "#892110")) +
  my_theme

##split violin point estimate plot##

summary_data <- data %>%
  group_by(sex, face_sex) %>%
  summarise(
    mean = mean(dv),
    min = mean(dv) - qnorm(0.975)*sd(dv)/sqrt(n()),
    max = mean(dv) + qnorm(0.975)*sd(dv)/sqrt(n())
  )

data %>%
  ggplot(aes(sex, dv, fill = face_sex)) +
  geom_hline(yintercept=0, color=textcolor, size=1) +
  geom_split_violin(color=textcolor, trim=FALSE, alpha = 0.5) +
  geom_pointrange(
    data = summary_data,
    aes(sex, mean, ymin=min, ymax=max),
    color = textcolor, 
    shape = 20, # 95,
    position = position_dodge(width = 0.25)
  ) +
  ylab("DV") +
  xlab("Participant Sex") +
  ylim(-5, 5) + 
  scale_fill_manual(values = c("#3D66CC", "#892110")) +
  scale_color_manual(values = c("#3D66CC", "#892110")) +
  my_theme